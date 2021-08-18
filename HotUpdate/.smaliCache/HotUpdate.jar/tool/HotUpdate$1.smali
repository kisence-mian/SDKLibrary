.class Ltool/HotUpdate$1;
.super Ljava/lang/Object;
.source "HotUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltool/HotUpdate;->getFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltool/HotUpdate;

.field final synthetic val$strPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltool/HotUpdate;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Ltool/HotUpdate;

    .line 114
    iput-object p1, p0, Ltool/HotUpdate$1;->this$0:Ltool/HotUpdate;

    iput-object p2, p0, Ltool/HotUpdate$1;->val$strPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 117
    :try_start_0
    iget-object v0, p0, Ltool/HotUpdate$1;->this$0:Ltool/HotUpdate;

    iget-object v1, p0, Ltool/HotUpdate$1;->val$strPath:Ljava/lang/String;

    # invokes: Ltool/HotUpdate;->getDataSource(Ljava/lang/String;)V
    invoke-static {v0, v1}, Ltool/HotUpdate;->access$000(Ltool/HotUpdate;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 120
    goto :goto_23

    .line 118
    :catch_8
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFile Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method
