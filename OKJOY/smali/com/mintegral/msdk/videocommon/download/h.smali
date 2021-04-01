.class public final Lcom/mintegral/msdk/videocommon/download/h;
.super Ljava/lang/Object;
.source "HTMLResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/videocommon/download/h$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    sget-object v0, Lcom/mintegral/msdk/base/common/b/c;->g:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/h;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/h;-><init>()V

    return-void
.end method

.method public static a()Lcom/mintegral/msdk/videocommon/download/h;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/h$a;->a:Lcom/mintegral/msdk/videocommon/download/h;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/h;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/h;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 112
    :try_start_0
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 118
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/e;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object v0

    .line 125
    :goto_32
    return-object v0

    .line 120
    :catch_33
    move-exception v0

    .line 121
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_3b

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    :cond_3b
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public final a(Ljava/lang/String;[B)Z
    .registers 7

    .prologue
    .line 85
    :try_start_0
    const-string v0, "HTMLResourceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveResHtmlFile url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p2, :cond_65

    array-length v0, p2

    if-lez v0, :cond_65

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "HTMLResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveResHtmlFile folderName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {p2, v1}, Lcom/mintegral/msdk/base/utils/e;->a([BLjava/io/File;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_5d

    move-result v0

    if-eqz v0, :cond_65

    .line 93
    const/4 v0, 0x1

    .line 101
    :goto_5c
    return v0

    .line 96
    :catch_5d
    move-exception v0

    .line 97
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_65

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :cond_65
    const/4 v0, 0x0

    goto :goto_5c
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2021
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/f$a;->a:Lcom/mintegral/msdk/videocommon/download/f;

    .line 53
    new-instance v1, Lcom/mintegral/msdk/videocommon/download/h$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videocommon/download/h$1;-><init>(Lcom/mintegral/msdk/videocommon/download/h;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/f;->a(Lcom/mintegral/msdk/base/common/f/a;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 75
    :cond_12
    :goto_12
    return-void

    .line 70
    :catch_13
    move-exception v0

    .line 71
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method
