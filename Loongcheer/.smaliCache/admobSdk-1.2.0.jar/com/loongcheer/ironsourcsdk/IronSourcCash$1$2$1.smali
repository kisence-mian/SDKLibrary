.class Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2$1;
.super Ljava/lang/Object;
.source "IronSourcCash.java"

# interfaces
.implements Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;


# direct methods
.method constructor <init>(Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;

    .line 177
    iput-object p1, p0, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2$1;->this$1:Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad()V
    .registers 1

    .line 181
    return-void
.end method

.method public onLoadError(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 186
    return-void
.end method
