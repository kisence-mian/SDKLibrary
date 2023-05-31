.class public Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$ImageInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field public mIsGif:Z

.field public mPicUrl:Ljava/lang/String;

.field public mRawDataSize:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicSize()J
    .registers 3

    iget-wide v0, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$ImageInfo;->mRawDataSize:J

    return-wide v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$ImageInfo;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isGif()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$ImageInfo;->mIsGif:Z

    return v0
.end method
