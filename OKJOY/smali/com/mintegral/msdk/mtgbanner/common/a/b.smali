.class public Lcom/mintegral/msdk/mtgbanner/common/a/b;
.super Ljava/lang/Object;
.source "BannerRequestInfo.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/b;->b:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/mintegral/msdk/mtgbanner/common/a/b;->c:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/a/b;->d:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/mintegral/msdk/mtgbanner/common/a/b;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/a/b;->d:Ljava/lang/String;

    return-object v0
.end method
