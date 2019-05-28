package tool;

public interface DownloadListener {

    void onProgress(int progress);//通知当前的下载进度
    void onSuccess();//通知下载成功
    void onFailed();//。。。。失败
    void onPaused();//。。。。。暂停
    void onCanceled();//。。。。取消

}
