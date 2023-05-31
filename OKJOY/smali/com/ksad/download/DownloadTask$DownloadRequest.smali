.class public Lcom/ksad/download/DownloadTask$DownloadRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x327dcdaac0d94ceaL


# instance fields
.field private mAllowedNetworkTypes:I

.field private mDestinationDir:Ljava/lang/String;

.field private mDestinationFileName:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mInstallAfterDownload:Z

.field private mIsPhotoAdDownloadRequest:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mNotificationVisibility:I

.field private final mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mRequestHeaders:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mInstallAfterDownload:Z

    iput-boolean v1, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mIsPhotoAdDownloadRequest:Z

    iput v2, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mAllowedNetworkTypes:I

    iput v1, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mNotificationVisibility:I

    if-eqz p1, :cond_6a

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/ksad/download/b;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/ksad/download/b;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2e
    invoke-static {}, Lcom/ksad/download/b;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDestinationDir:Ljava/lang/String;

    iput-object p1, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDownloadUrl:Ljava/lang/String;

    invoke-static {}, Lcom/ksad/download/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_4d

    iput v2, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mAllowedNetworkTypes:I

    :goto_4c
    return-void

    :cond_4d
    const/4 v0, 0x2

    iput v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mAllowedNetworkTypes:I

    goto :goto_4c

    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/ksad/download/DownloadTask$DownloadRequest;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mInstallAfterDownload:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ksad/download/DownloadTask$DownloadRequest;)I
    .registers 2

    iget v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mAllowedNetworkTypes:I

    return v0
.end method

.method static synthetic access$300(Lcom/ksad/download/DownloadTask$DownloadRequest;)I
    .registers 2

    iget v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mNotificationVisibility:I

    return v0
.end method

.method static synthetic access$400(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDestinationDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDestinationFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mRequestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/io/Serializable;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mTag:Ljava/io/Serializable;

    return-object v0
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ksad/download/DownloadTask$DownloadRequest;
    .registers 5

    if-eqz p1, :cond_1c

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    if-nez p2, :cond_e

    const-string p2, ""

    :cond_e
    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header may not contain \':\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllowedNetworkTypes()I
    .registers 2

    iget v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mAllowedNetworkTypes:I

    return v0
.end method

.method public getDestinationDir()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDestinationDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDestinationFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/io/Serializable;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mTag:Ljava/io/Serializable;

    return-object v0
.end method

.method public isPhotoAdDownloadRequest()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mIsPhotoAdDownloadRequest:Z

    return v0
.end method

.method public setAllowedNetworkTypes(I)Lcom/ksad/download/DownloadTask$DownloadRequest;
    .registers 2

    iput p1, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mAllowedNetworkTypes:I

    return-object p0
.end method

.method public setDestinationDir(Ljava/lang/String;)Lcom/ksad/download/DownloadTask$DownloadRequest;
    .registers 2

    iput-object p1, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDestinationDir:Ljava/lang/String;

    return-object p0
.end method

.method public setDestinationFileName(Ljava/lang/String;)Lcom/ksad/download/DownloadTask$DownloadRequest;
    .registers 2

    iput-object p1, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mDestinationFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setInstallAfterDownload(Z)Lcom/ksad/download/DownloadTask$DownloadRequest;
    .registers 2

    iput-boolean p1, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mInstallAfterDownload:Z

    return-object p0
.end method

.method public setIsPhotoAdDownloadRequest()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mIsPhotoAdDownloadRequest:Z

    return-void
.end method

.method public setNotificationVisibility(I)Lcom/ksad/download/DownloadTask$DownloadRequest;
    .registers 2

    iput p1, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mNotificationVisibility:I

    return-object p0
.end method

.method public setTag(Ljava/io/Serializable;)Lcom/ksad/download/DownloadTask$DownloadRequest;
    .registers 2

    iput-object p1, p0, Lcom/ksad/download/DownloadTask$DownloadRequest;->mTag:Ljava/io/Serializable;

    return-object p0
.end method
