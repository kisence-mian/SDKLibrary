.class public Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;
.super Ljava/lang/Object;
.source "MtgBidNativeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/out/MtgBidNativeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyWordInfo"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->a:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->b:Ljava/lang/String;

    .line 325
    return-void
.end method


# virtual methods
.method public getKeyWordPN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWorkVN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyWordPN(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->a:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setKeyWorkVN(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->b:Ljava/lang/String;

    .line 319
    return-void
.end method
