.class public Lcom/mintegral/msdk/mtgbanner/common/b/f;
.super Ljava/lang/Object;
.source "DownloadBannerUrlListener.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/g$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/mintegral/msdk/mtgbanner/common/c/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/b/f;->c:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    .line 16
    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/b/f;->b:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 21
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/b/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadBannerUrlListener HTML SUCCESS:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/f;->c:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/b/f;->b:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 23
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 27
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/b/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadBannerUrlListener HTML FAIL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/f;->c:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/b/f;->b:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 29
    return-void
.end method
