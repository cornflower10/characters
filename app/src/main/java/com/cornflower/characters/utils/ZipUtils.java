package com.cornflower.characters.utils;

import android.content.Context;
import android.util.Log;
import android.util.Xml;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

/**
 * @author chenkaijian
 */
public class ZipUtils {
    /**
     * 解压Assets中的文件
     * @param //context上下文对象
     * @param// assetName压缩包文件名
     * @param //outputDirectory输出目录
     * @throws IOException
     */
    public static void unZip(Context context, String assetName,String outputDirectory) throws IOException {
        //创建解压目标目录
        File file = new File(outputDirectory);
        //如果目标目录不存在，则创建
        if (!file.exists()) {
            file.mkdirs();
        }
        InputStream inputStream = null;
        //打开压缩文件
        inputStream = context.getAssets().open(assetName);
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        //读取一个进入点
        ZipEntry zipEntry = zipInputStream.getNextEntry();
        //使用1Mbuffer
        byte[] buffer = new byte[1024 * 1024];
        //解压时字节计数
        int count = 0;
        //如果进入点为空说明已经遍历完所有压缩包中文件和目录
        while (zipEntry != null) {
            //如果是一个目录
            if (zipEntry.isDirectory()) {
                //String name = zipEntry.getName();
                //name = name.substring(0, name.length() - 1);
                file = new File(outputDirectory + File.separator + zipEntry.getName());
                file.mkdir();
            } else {
                //如果是文件
                file = new File(outputDirectory + File.separator
                        + zipEntry.getName());
                //创建该文件
                file.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                while ((count = zipInputStream.read(buffer)) > 0) {
                    fileOutputStream.write(buffer, 0, count);
                }
                fileOutputStream.close();
            }
            //定位到下一个文件入口
            zipEntry = zipInputStream.getNextEntry();
        }
        zipInputStream.close();
    }

    /**
     * 解压缩功能.
     * 将zipFile文件解压到folderPath目录下.
     * @throws Exception
     */
    public static int upZipFile(File zipFile, String folderPath) throws IOException {
        //public static void upZipFile() throws Exception{
        ZipFile zfile=new ZipFile(zipFile);
        Enumeration zList=zfile.entries();
        ZipEntry ze=null;
        byte[] buf=new byte[1024];
        while(zList.hasMoreElements()){
            ze=(ZipEntry)zList.nextElement();
            if(ze.isDirectory()){
                Log.d("upZipFile", "ze.getName() = " + ze.getName());
                String dirstr = folderPath + ze.getName();
                //dirstr.trim();
                dirstr = new String(dirstr.getBytes("8859_1"), "GB2312");
                Log.d("upZipFile", "str = "+dirstr);
                File f=new File(dirstr);
                f.mkdir();
                continue;
            }
            Log.d("upZipFile", "ze.getName() = "+ze.getName());
            OutputStream os=new BufferedOutputStream(new FileOutputStream(getRealFileName(folderPath, ze.getName())));
            InputStream is=new BufferedInputStream(zfile.getInputStream(ze));
            int readLen=0;
            while ((readLen=is.read(buf, 0, 1024))!=-1) {
                os.write(buf, 0, readLen);
            }
            is.close();
            os.close();
        }
        zfile.close();
        Log.d("upZipFile", "finish");
        return 0;
    }

    /**
     * 给定根目录，返回一个相对路径所对应的实际文件名.
     * @param baseDir 指定根目录
     * @param absFileName 相对路径名，来自于ZipEntry中的name
     * @return java.io.File 实际的文件
     */
    public static File getRealFileName(String baseDir, String absFileName){
        String[] dirs=absFileName.split("/");
        File ret=new File(baseDir);
        String substr = null;
        if(dirs.length>1){
            for (int i = 0; i < dirs.length-1;i++) {
                substr = dirs[i];
                try {
                    //substr.trim();
                    substr = new String(substr.getBytes("8859_1"), "GB2312");

                } catch (UnsupportedEncodingException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                ret=new File(ret, substr);

            }
            Log.d("upZipFile", "1ret = "+ret);
            if(!ret.exists())
                ret.mkdirs();
            substr = dirs[dirs.length-1];
            try {
                //substr.trim();
                substr = new String(substr.getBytes("8859_1"), "GB2312");
                Log.d("upZipFile", "substr = "+substr);
            } catch (UnsupportedEncodingException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            ret=new File(ret, substr);
            Log.d("upZipFile", "2ret = "+ret);
            return ret;
        }
        return ret;
    }

    /**
     * 解压素材包并自动生成配置文件
     */
    public static void unZipMaterials(Context context , String fileName ){
        try{
//            String typeName = getMaterialDescription(materialType);
            // 获取Android/data/包名/files/目录
            File dir = context.getExternalFilesDir(null);
            if(!dir.exists()){
                dir.mkdirs();
            }
            // 将素材压缩包解压至相应类别的目录下
            unZip(context , fileName+".zip" , dir.getAbsolutePath()+"/"+fileName);
            // 遍历自动生成配置文件
            File file = new File(dir.getAbsolutePath() +"/"+fileName);
            File[] files = file.listFiles();
            Log.i("读取解压文件大小",""+files.length);
            ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
            for(int i=0;i<files.length;i++){
                if(files[i].getName().toLowerCase().endsWith("f")){
                    HashMap<String, String> map = new HashMap<String, String>();
                    map.put("name", files[i].getName());
                    list.add(map);
                }
            }
            Log.i("写入XML大小",""+list.size());
            writeXML(list, dir.getAbsolutePath()  +"/"+fileName+"/");
        } catch(Exception e) {
            Log.i("e","解压失败");
            e.printStackTrace();
        }
    }


    /**
     * 获取素材包类别
     */
    public static String getMaterialDescription(int materialType){
        String description = null;
        switch (materialType){
            case 1:
                description = "decorate";
                break;
            case 2:
                description = "mode";
                break;
            case 3:
                description = "art";
                break;
            case 4:
                description = "cover";
                break;
            case 5:
                description = "cute";
                break;
        }
        return description;
    }

    /**
     * 解析xml文件
     */
    public static ArrayList<HashMap<String,String>> parseXML(Context context ) {
        String packageName = "font";
        File dir = context.getExternalFilesDir(null);
        File file = new File(dir.getAbsolutePath()+"/font/font.xml");
        InputStream inStream = null;
        try {
            inStream = new FileInputStream(file);
        } catch (Exception e) {
            e.printStackTrace();
        }

        XmlPullParser parser = Xml.newPullParser();

        try {
            parser.setInput(inStream, "UTF-8");
            int eventType = parser.getEventType();

            HashMap map = null;
            ArrayList<HashMap<String,String>> list = null;

            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                    case XmlPullParser.START_DOCUMENT://文档开始事件,可以进行数据初始化处理
                        list = new  ArrayList<HashMap<String,String>>();
                        break;

                    case XmlPullParser.START_TAG://开始元素事件
                        String name = parser.getName();
                        if (name.equalsIgnoreCase("material")) {
                            map = new HashMap<String,String>();
                        } else if (map != null) {
                            if (name.equalsIgnoreCase("name")) {
                                map.put("name",packageName+"/"+parser.nextText());// 如果后面是Text元素,即返回它的值
                            }
                        }
                        break;

                    case XmlPullParser.END_TAG://结束元素事件
                        if (parser.getName().equalsIgnoreCase("material") && map != null) {
                            list.add(map);
                            map = null;
                        }

                        break;
                }

                eventType = parser.next();
            }
            Log.i("解析字体种类......",""+list.size());
            inStream.close();

            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    /**
     * 创建xml文件
     */
    public static boolean writeXML(ArrayList<HashMap<String,String>> data, String localDir) {
        boolean bFlag = false;
        FileOutputStream fileos = null;

        File newXmlFile = new File(localDir + "font.xml");
        try {
            if (newXmlFile.exists()) {
                bFlag = newXmlFile.delete();
            } else {
                bFlag = true;
            }

            if (bFlag) {

                if (newXmlFile.createNewFile()) {
                    fileos = new FileOutputStream(newXmlFile);

                    // we create a XmlSerializer in order to write xml data
                    XmlSerializer serializer = Xml.newSerializer();

                    // we set the FileOutputStream as output for the serializer,
                    // using UTF-8 encoding
                    serializer.setOutput(fileos, "UTF-8");

                    // <?xml version=”1.0″ encoding=”UTF-8″>
                    // Write <?xml declaration with encoding (if encoding not
                    // null) and standalone flag (if stan dalone not null)
                    // This method can only be called just after setOutput.
                    serializer.startDocument("UTF-8", null);

                    // start a tag called "materials"
                    serializer.startTag(null, "materials");
                    for (HashMap<String,String> map : data) {
                        serializer.startTag(null, "material");
                        serializer.startTag(null, "name");
                        serializer.text(map.get("name"));
                        serializer.endTag(null, "name");
                        serializer.endTag(null, "material");
                    }
                    serializer.endTag(null, "materials");
                    serializer.endDocument();

                    // write xml data into the FileOutputStream
                    serializer.flush();
                    // finally we close the file stream
                    fileos.close();
                }
            }
        } catch (Exception e) {
        }
        return bFlag;
    }

}
