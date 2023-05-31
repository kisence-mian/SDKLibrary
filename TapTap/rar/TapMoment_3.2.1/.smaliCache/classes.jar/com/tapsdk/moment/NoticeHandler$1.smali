.class Lcom/tapsdk/moment/NoticeHandler$1;
.super Ljava/lang/Object;
.source "NoticeHandler.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/NoticeHandler;->startObserverNotice(Ljava/lang/String;Lcom/tapsdk/moment/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Action1<",
        "Lcom/tds/common/net/ResponseBean<",
        "Lcom/tapsdk/moment/entities/NoticeInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/NoticeHandler;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/NoticeHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/NoticeHandler;

    .line 76
    iput-object p1, p0, Lcom/tapsdk/moment/NoticeHandler$1;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/net/ResponseBean;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/net/ResponseBean<",
            "Lcom/tapsdk/moment/entities/NoticeInfo;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "noticeInfoResponseBean":Lcom/tds/common/net/ResponseBean;, "Lcom/tds/common/net/ResponseBean<Lcom/tapsdk/moment/entities/NoticeInfo;>;"
    iget-boolean v0, p1, Lcom/tds/common/net/ResponseBean;->success:Z

    const-string v1, "no data"

    const/4 v2, 0x0

    if-eqz v0, :cond_4f

    .line 80
    iget-object v0, p1, Lcom/tds/common/net/ResponseBean;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tapsdk/moment/entities/NoticeInfo;

    .line 81
    .local v0, "noticeInfo":Lcom/tapsdk/moment/entities/NoticeInfo;
    if-eqz v0, :cond_40

    .line 82
    iget-object v1, p0, Lcom/tapsdk/moment/NoticeHandler$1;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    iget v2, v0, Lcom/tapsdk/moment/entities/NoticeInfo;->appNoticeNum:I

    iget v3, v0, Lcom/tapsdk/moment/entities/NoticeInfo;->userNoticeNum:I

    add-int/2addr v2, v3

    # setter for: Lcom/tapsdk/moment/NoticeHandler;->noticeNum:I
    invoke-static {v1, v2}, Lcom/tapsdk/moment/NoticeHandler;->access$002(Lcom/tapsdk/moment/NoticeHandler;I)I

    .line 83
    iget-object v1, p0, Lcom/tapsdk/moment/NoticeHandler$1;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    const/4 v2, 0x1

    # setter for: Lcom/tapsdk/moment/NoticeHandler;->lastSuccess:Z
    invoke-static {v1, v2}, Lcom/tapsdk/moment/NoticeHandler;->access$102(Lcom/tapsdk/moment/NoticeHandler;Z)Z

    .line 84
    iget-object v1, p0, Lcom/tapsdk/moment/NoticeHandler$1;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    # getter for: Lcom/tapsdk/moment/NoticeHandler;->noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;
    invoke-static {v1}, Lcom/tapsdk/moment/NoticeHandler;->access$200(Lcom/tapsdk/moment/NoticeHandler;)Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tapsdk/moment/NoticeHandler$1;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    # getter for: Lcom/tapsdk/moment/NoticeHandler;->noticeNum:I
    invoke-static {v3}, Lcom/tapsdk/moment/NoticeHandler;->access$000(Lcom/tapsdk/moment/NoticeHandler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tapsdk/moment/NoticeHandler$NoticeListener;->onGetNoticeSuccess(Ljava/lang/String;)V

    goto :goto_4e

    .line 86
    :cond_40
    iget-object v3, p0, Lcom/tapsdk/moment/NoticeHandler$1;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    # setter for: Lcom/tapsdk/moment/NoticeHandler;->lastSuccess:Z
    invoke-static {v3, v2}, Lcom/tapsdk/moment/NoticeHandler;->access$102(Lcom/tapsdk/moment/NoticeHandler;Z)Z

    .line 87
    iget-object v2, p0, Lcom/tapsdk/moment/NoticeHandler$1;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    # getter for: Lcom/tapsdk/moment/NoticeHandler;->noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;
    invoke-static {v2}, Lcom/tapsdk/moment/NoticeHandler;->access$200(Lcom/tapsdk/moment/NoticeHandler;)Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tapsdk/moment/NoticeHandler$NoticeListener;->onGetNoticeFail(Ljava/lang/String;)V

    .line 89
    .end local v0    # "noticeInfo":Lcom/tapsdk/moment/entities/NoticeInfo;
    :goto_4e
    goto :goto_5d

    .line 90
    :cond_4f
    iget-object v0, p0, Lcom/tapsdk/moment/NoticeHandler$1;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    # setter for: Lcom/tapsdk/moment/NoticeHandler;->lastSuccess:Z
    invoke-static {v0, v2}, Lcom/tapsdk/moment/NoticeHandler;->access$102(Lcom/tapsdk/moment/NoticeHandler;Z)Z

    .line 91
    iget-object v0, p0, Lcom/tapsdk/moment/NoticeHandler$1;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    # getter for: Lcom/tapsdk/moment/NoticeHandler;->noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;
    invoke-static {v0}, Lcom/tapsdk/moment/NoticeHandler;->access$200(Lcom/tapsdk/moment/NoticeHandler;)Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/NoticeHandler$NoticeListener;->onGetNoticeFail(Ljava/lang/String;)V

    .line 93
    :goto_5d
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 76
    check-cast p1, Lcom/tds/common/net/ResponseBean;

    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/NoticeHandler$1;->call(Lcom/tds/common/net/ResponseBean;)V

    return-void
.end method
