.class final Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;
.super Ljava/lang/Object;
.source "TTDynamic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/io/PipedOutputStream;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/PipedOutputStream;)V
    .registers 3

    .prologue
    .line 138
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->b:Ljava/io/PipedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 143
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_5f
    .catchall {:try_start_1 .. :try_end_8} :catchall_42

    .line 144
    const/16 v0, 0x400

    :try_start_a
    new-array v0, v0, [B

    .line 146
    :goto_c
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    .line 147
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->b:Ljava/io/PipedOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/PipedOutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_1a
    .catchall {:try_start_a .. :try_end_19} :catchall_5b

    goto :goto_c

    .line 149
    :catch_1a
    move-exception v0

    .line 150
    :goto_1b
    :try_start_1b
    const-string v2, "TTDynamic"

    const-string v3, "get html error"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_5b

    .line 152
    if-eqz v1, :cond_27

    .line 154
    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_55

    .line 158
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->b:Ljava/io/PipedOutputStream;

    if-eqz v0, :cond_30

    .line 160
    :try_start_2b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->b:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_5d

    .line 166
    :cond_30
    :goto_30
    return-void

    .line 152
    :cond_31
    if-eqz v1, :cond_36

    .line 154
    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_53

    .line 158
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->b:Ljava/io/PipedOutputStream;

    if-eqz v0, :cond_30

    .line 160
    :try_start_3a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->b:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_30

    .line 161
    :catch_40
    move-exception v0

    goto :goto_30

    .line 152
    :catchall_42
    move-exception v0

    move-object v1, v2

    :goto_44
    if-eqz v1, :cond_49

    .line 154
    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_57

    .line 158
    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->b:Ljava/io/PipedOutputStream;

    if-eqz v1, :cond_52

    .line 160
    :try_start_4d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->b:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_52} :catch_59

    .line 162
    :cond_52
    :goto_52
    throw v0

    .line 155
    :catch_53
    move-exception v0

    goto :goto_36

    :catch_55
    move-exception v0

    goto :goto_27

    :catch_57
    move-exception v1

    goto :goto_49

    .line 161
    :catch_59
    move-exception v1

    goto :goto_52

    .line 152
    :catchall_5b
    move-exception v0

    goto :goto_44

    .line 161
    :catch_5d
    move-exception v0

    goto :goto_30

    .line 149
    :catch_5f
    move-exception v0

    move-object v1, v2

    goto :goto_1b
.end method
