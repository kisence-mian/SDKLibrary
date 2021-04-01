.class public Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;
.super Ljava/lang/Object;
.source "MtgNativeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/out/MtgNativeHandler;
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
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->a:Ljava/lang/String;

    .line 351
    iput-object p2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->b:Ljava/lang/String;

    .line 352
    return-void
.end method


# virtual methods
.method public getKeyWordPN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWorkVN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyWordPN(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->a:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setKeyWorkVN(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->b:Ljava/lang/String;

    .line 346
    return-void
.end method
