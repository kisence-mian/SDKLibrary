.class Lcom/tds/achievement/UserDataStore$4;
.super Ljava/util/TimerTask;
.source "UserDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/UserDataStore;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/UserDataStore;


# direct methods
.method constructor <init>(Lcom/tds/achievement/UserDataStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/UserDataStore;

    .line 147
    iput-object p1, p0, Lcom/tds/achievement/UserDataStore$4;->this$0:Lcom/tds/achievement/UserDataStore;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore$4;->this$0:Lcom/tds/achievement/UserDataStore;

    const/4 v1, 0x0

    # setter for: Lcom/tds/achievement/UserDataStore;->isCounting:Z
    invoke-static {v0, v1}, Lcom/tds/achievement/UserDataStore;->access$002(Lcom/tds/achievement/UserDataStore;Z)Z

    .line 151
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore$4;->this$0:Lcom/tds/achievement/UserDataStore;

    # invokes: Lcom/tds/achievement/UserDataStore;->triggerUpload(Z)V
    invoke-static {v0, v1}, Lcom/tds/achievement/UserDataStore;->access$100(Lcom/tds/achievement/UserDataStore;Z)V

    .line 152
    return-void
.end method
