.class public Lcom/JoyFramework/wight/i;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/JoyFramework/wight/DownLoadSeekBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/JoyFramework/wight/i$a;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/i;->j:Z

    .line 63
    iput-object p1, p0, Lcom/JoyFramework/wight/i;->a:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_down_load_k"

    const-string v2, "layout"

    .line 65
    invoke-static {p1, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/i;->b:Landroid/view/View;

    .line 67
    new-instance v0, Lcom/JoyFramework/wight/i$a;

    invoke-direct {v0, p0, p0}, Lcom/JoyFramework/wight/i$a;-><init>(Lcom/JoyFramework/wight/i;Lcom/JoyFramework/wight/i;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/i;->h:Lcom/JoyFramework/wight/i$a;

    .line 68
    iput-object p3, p0, Lcom/JoyFramework/wight/i;->c:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 268
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 271
    :goto_3
    return-object v0

    .line 270
    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/JoyFramework/d/ar;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private a(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 257
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 166
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/remote/b/d/b;->c()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/JoyFramework/remote/c/d;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/c/d;

    .line 167
    invoke-interface {v0, p2}, Lcom/JoyFramework/remote/c/d;->b(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/JoyFramework/wight/j;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/wight/j;-><init>(Lcom/JoyFramework/wight/i;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 188
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/JoyFramework/remote/bean/h;

    .line 99
    if-eqz v0, :cond_c

    .line 100
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_108

    .line 163
    :cond_c
    :goto_c
    return-void

    .line 102
    :pswitch_d
    iget-boolean v1, p0, Lcom/JoyFramework/wight/i;->j:Z

    if-eqz v1, :cond_21

    .line 104
    :try_start_11
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/h;->a()I

    move-result v1

    iput v1, p0, Lcom/JoyFramework/wight/i;->i:I

    .line 106
    iget-object v1, p0, Lcom/JoyFramework/wight/i;->e:Lcom/JoyFramework/wight/DownLoadSeekBar;

    iget v2, p0, Lcom/JoyFramework/wight/i;->i:I

    invoke-virtual {v1, v2}, Lcom/JoyFramework/wight/DownLoadSeekBar;->setMaxProgressSize(I)V

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/JoyFramework/wight/i;->j:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_5a

    .line 113
    :cond_21
    :goto_21
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/h;->d()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/h;->c()Ljava/lang/String;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/JoyFramework/wight/i;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :try_start_45
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/h;->b()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/JoyFramework/wight/i;->e:Lcom/JoyFramework/wight/DownLoadSeekBar;

    if-eqz v1, :cond_c

    .line 123
    iget-object v1, p0, Lcom/JoyFramework/wight/i;->e:Lcom/JoyFramework/wight/DownLoadSeekBar;

    invoke-virtual {v1, v0}, Lcom/JoyFramework/wight/DownLoadSeekBar;->setProgressSize(I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_52} :catch_53

    goto :goto_c

    .line 130
    :catch_53
    move-exception v0

    .line 131
    const-string v0, "\u8f6c\u6362\u4e0b\u8f7d\u8fdb\u5ea6\u51fa\u9519 "

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_c

    .line 108
    :catch_5a
    move-exception v1

    .line 109
    const-string v1, "\u8f6c\u6362\u4e0b\u8f7d\u6587\u4ef6\u5927\u5c0f\u51fa\u9519  "

    invoke-static {v1}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_21

    .line 136
    :pswitch_61
    iget-object v1, p0, Lcom/JoyFramework/wight/i;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget v0, p0, Lcom/JoyFramework/wight/i;->i:I

    if-eqz v0, :cond_90

    .line 139
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->e:Lcom/JoyFramework/wight/DownLoadSeekBar;

    iget v1, p0, Lcom/JoyFramework/wight/i;->i:I

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/DownLoadSeekBar;->setProgressSize(I)V

    .line 143
    :cond_90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-static {v1}, Lcom/JoyFramework/wight/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 147
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_f8

    .line 148
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v2

    iget-object v2, v2, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v4

    iget-object v4, v4, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :goto_da
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 156
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 157
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 158
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_c

    .line 152
    :cond_f8
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_da

    .line 100
    nop

    :pswitch_data_108
    .packed-switch 0x10010
        :pswitch_d
        :pswitch_61
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lokhttp3/ResponseBody;)Z
    .registers 15

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 192
    :try_start_2
    invoke-static {p1}, Lcom/JoyFramework/wight/i;->a(Landroid/content/Context;)Ljava/io/File;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_8a

    move-result-object v1

    .line 198
    const/16 v2, 0x1000

    :try_start_8
    new-array v11, v2, [B

    .line 200
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 202
    invoke-direct {p0, v4, v5}, Lcom/JoyFramework/wight/i;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 204
    const-wide/16 v6, 0x0

    .line 206
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_93
    .catchall {:try_start_8 .. :try_end_17} :catchall_7b

    move-result-object v10

    .line 207
    :try_start_18
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_96
    .catchall {:try_start_18 .. :try_end_1d} :catchall_8d

    .line 210
    :goto_1d
    :try_start_1d
    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 212
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4c

    .line 231
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 233
    new-instance v0, Lcom/JoyFramework/remote/bean/h;

    invoke-direct {p0, v6, v7}, Lcom/JoyFramework/wight/i;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/JoyFramework/remote/bean/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 235
    const v2, 0x10011

    iput v2, v1, Landroid/os/Message;->what:I

    .line 236
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->h:Lcom/JoyFramework/wight/i$a;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/i$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_40} :catch_6c
    .catchall {:try_start_1d .. :try_end_40} :catchall_91

    .line 239
    const/4 v0, 0x1

    .line 243
    if-eqz v10, :cond_46

    .line 244
    :try_start_43
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 246
    :cond_46
    if-eqz v9, :cond_4b

    .line 247
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4b} :catch_8a

    .line 251
    :cond_4b
    :goto_4b
    return v0

    .line 216
    :cond_4c
    const/4 v1, 0x0

    :try_start_4d
    invoke-virtual {v9, v11, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    int-to-long v0, v0

    add-long/2addr v6, v0

    .line 221
    new-instance v1, Lcom/JoyFramework/remote/bean/h;

    invoke-direct {p0, v6, v7}, Lcom/JoyFramework/wight/i;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v1 .. v7}, Lcom/JoyFramework/remote/bean/h;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 222
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 223
    const v3, 0x10010

    iput v3, v0, Landroid/os/Message;->what:I

    .line 224
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/JoyFramework/wight/i;->h:Lcom/JoyFramework/wight/i$a;

    invoke-virtual {v1, v0}, Lcom/JoyFramework/wight/i$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_6b} :catch_6c
    .catchall {:try_start_4d .. :try_end_6b} :catchall_91

    goto :goto_1d

    .line 240
    :catch_6c
    move-exception v0

    move-object v0, v9

    move-object v1, v10

    .line 243
    :goto_6f
    if-eqz v1, :cond_74

    .line 244
    :try_start_71
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 246
    :cond_74
    if-eqz v0, :cond_79

    .line 247
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_79
    move v0, v8

    .line 241
    goto :goto_4b

    .line 243
    :catchall_7b
    move-exception v1

    move-object v9, v0

    move-object v10, v0

    move-object v0, v1

    :goto_7f
    if-eqz v10, :cond_84

    .line 244
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 246
    :cond_84
    if-eqz v9, :cond_89

    .line 247
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    :cond_89
    throw v0
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_8a} :catch_8a

    .line 250
    :catch_8a
    move-exception v0

    move v0, v8

    .line 251
    goto :goto_4b

    .line 243
    :catchall_8d
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_7f

    :catchall_91
    move-exception v0

    goto :goto_7f

    .line 240
    :catch_93
    move-exception v1

    move-object v1, v0

    goto :goto_6f

    :catch_96
    move-exception v1

    move-object v1, v10

    goto :goto_6f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/i;->setContentView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_64

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/wight/i;->a:Landroid/content/Context;

    const-string v2, "k_dialog_down_load_name"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/i;->d:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/wight/i;->a:Landroid/content/Context;

    const-string v2, "k_dialog_down_load_seekBar"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/DownLoadSeekBar;

    iput-object v0, p0, Lcom/JoyFramework/wight/i;->e:Lcom/JoyFramework/wight/DownLoadSeekBar;

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/wight/i;->a:Landroid/content/Context;

    const-string v2, "k_dialog_down_load_progress"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/i;->f:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/wight/i;->a:Landroid/content/Context;

    const-string v2, "k_dialog_down_load_install"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/i;->g:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 84
    iget-object v0, p0, Lcom/JoyFramework/wight/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/JoyFramework/wight/i;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/wight/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    :cond_64
    invoke-virtual {p0, v3}, Lcom/JoyFramework/wight/i;->setCancelable(Z)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/JoyFramework/wight/i;->setCanceledOnTouchOutside(Z)V

    .line 93
    return-void
.end method
