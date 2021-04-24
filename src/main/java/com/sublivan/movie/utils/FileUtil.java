package com.sublivan.movie.utils;

import ch.qos.logback.classic.Logger;
import org.apache.commons.io.FileUtils;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.util.Base64;

public class FileUtil {
    private final Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());

    public static byte[] convertFileContentToBlob(String filePath) {
        byte[] result = null;
        try {
            result = FileUtils.readFileToByteArray(new File(filePath));
        } catch (IOException ie) {
//            logger.info("file convert Error");
        }
        return result;
    }

    public static String convertBlobToBase64(byte[] blob) {
        return new String(Base64.getEncoder().encode(blob));
    }

    public static String getFileContent(String filePath) {
        byte[] filebyte = convertFileContentToBlob(filePath);
        return convertBlobToBase64(filebyte);
    }

}
