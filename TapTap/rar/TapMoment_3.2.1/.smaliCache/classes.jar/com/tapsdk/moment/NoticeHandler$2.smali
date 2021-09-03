.class Lcom/tapsdk/moment/NoticeHandler$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/NoticeHandler;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/NoticeHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/NoticeHandler;

    .line 94
    iput-object p1, p0, Lcom/tapsdk/moment/NoticeHandler$2;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 94
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/NoticeHandler$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 97
    iget-object v0, p0, Lcom/tapsdk/moment/NoticeHandler$2;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    const/4 v1, 0x0

    # setter for: Lcom/tapsdk/moment/NoticeHandler;->lastSuccess:Z
    invoke-static {v0, v1}, Lcom/tapsdk/moment/NoticeHandler;->access$102(Lcom/tapsdk/moment/NoticeHandler;Z)Z

    .line 98
    iget-object v0, p0, Lcom/tapsdk/moment/NoticeHandler$2;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    # getter for: Lcom/tapsdk/moment/NoticeHandler;->noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;
    invoke-static {v0}, Lcom/tapsdk/moment/NoticeHandler;->access$200(Lcom/tapsdk/moment/NoticeHandler;)Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    move-result-object v0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_13
    const-string v1, ""

    :goto_15
    invoke-interface {v0, v1}, Lcom/tapsdk/moment/NoticeHandler$NoticeListener;->onGetNoticeFail(Ljava/lang/String;)V

    .line 99
    return-void
.end method
