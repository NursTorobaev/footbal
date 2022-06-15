package company.service.impl;

import company.entity.Attachment;
import company.repos.AttachmentRepo;
import company.service.AttachmentService;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.util.Objects;

@Service
public class AttachmentServiceImpl implements AttachmentService {
    private AttachmentRepo attachmentRepo;

    public AttachmentServiceImpl(AttachmentRepo attachmentRepo) {
        this.attachmentRepo = attachmentRepo;
    }

    @Override
    public Attachment saveAttachment(MultipartFile file) throws Exception {
        String fileName = StringUtils.cleanPath(Objects.requireNonNull(file.getOriginalFilename()));
        try {
            if(fileName.contains("..")){
                throw new Exception("Filename contains invalid path sequence " + fileName);
            }
            Attachment attachment = new Attachment(fileName, file.getContentType(), file.getBytes());
            return attachmentRepo.save(attachment);
        }catch (Exception e){
            throw new Exception("Could not save File: " + fileName);
        }
    }

    @Override
    public Attachment getAttachment(String fileId) throws Exception {
        return attachmentRepo.findById(Long.valueOf(fileId)).orElseThrow(() -> new Exception("File not found by Id: " + fileId));
    }
}
