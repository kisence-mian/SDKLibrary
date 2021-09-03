.class Lcom/tapsdk/moment/NoticeHandler$3;
.super Lcom/tds/common/net/json/TypeRef;
.source "NoticeHandler.java"


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
        "Lcom/tds/common/net/json/TypeRef<",
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

    .line 72
    iput-object p1, p0, Lcom/tapsdk/moment/NoticeHandler$3;->this$0:Lcom/tapsdk/moment/NoticeHandler;

    invoke-direct {p0}, Lcom/tds/common/net/json/TypeRef;-><init>()V

    return-void
.end method
