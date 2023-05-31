.class final Lcom/tapsdk/moment/TapMoment$4;
.super Ljava/lang/Object;
.source "TapMoment.java"

# interfaces
.implements Lcom/tapsdk/moment/NoticeHandler$NoticeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/TapMoment;->sendNoticeRequest(Lcom/tapsdk/moment/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetNoticeFail(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 368
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 369
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const/16 v1, 0x4e84

    invoke-interface {v0, v1, p1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 371
    :cond_f
    return-void
.end method

.method public onGetNoticeSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 361
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 362
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const/16 v1, 0x4e20

    invoke-interface {v0, v1, p1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 364
    :cond_f
    return-void
.end method
