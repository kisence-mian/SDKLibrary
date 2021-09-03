.class Lcom/tapsdk/moment/LongClickHandler$2;
.super Ljava/lang/Object;
.source "LongClickHandler.java"

# interfaces
.implements Lcom/tapsdk/moment/image/SaveImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/LongClickHandler;->notifyMediaRefresh(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/LongClickHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/LongClickHandler;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/LongClickHandler;

    .line 82
    iput-object p1, p0, Lcom/tapsdk/moment/LongClickHandler$2;->this$0:Lcom/tapsdk/moment/LongClickHandler;

    iput-object p2, p0, Lcom/tapsdk/moment/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ZLjava/io/File;)V
    .registers 8
    .param p1, "allSuccess"    # Z
    .param p2, "file"    # Ljava/io/File;

    .line 85
    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_69

    if-eqz p1, :cond_69

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_69

    .line 89
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "_data"

    if-lt v0, v1, :cond_32

    .line 90
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/tapsdk/moment/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .end local v0    # "values":Landroid/content/ContentValues;
    goto :goto_56

    .line 95
    :cond_32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .restart local v0    # "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/tapsdk/moment/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/tapsdk/moment/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.NEW_PICTURE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_56
    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler$2;->this$0:Lcom/tapsdk/moment/LongClickHandler;

    # getter for: Lcom/tapsdk/moment/LongClickHandler;->mCallback:Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/LongClickHandler;->access$000(Lcom/tapsdk/moment/LongClickHandler;)Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 101
    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler$2;->this$0:Lcom/tapsdk/moment/LongClickHandler;

    # getter for: Lcom/tapsdk/moment/LongClickHandler;->mCallback:Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/LongClickHandler;->access$000(Lcom/tapsdk/moment/LongClickHandler;)Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;->onFinally(Z)V

    .line 103
    :cond_68
    return-void

    .line 86
    :cond_69
    :goto_69
    return-void
.end method
