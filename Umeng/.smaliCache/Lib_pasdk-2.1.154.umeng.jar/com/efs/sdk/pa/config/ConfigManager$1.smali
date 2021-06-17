.class final Lcom/efs/sdk/pa/config/ConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/observer/IConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/pa/config/ConfigManager;->getCurrentConfigRate()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/pa/config/ConfigManager;


# direct methods
.method constructor <init>(Lcom/efs/sdk/pa/config/ConfigManager;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/efs/sdk/pa/config/ConfigManager$1;->a:Lcom/efs/sdk/pa/config/ConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 143
    const-string v0, "apm_patrace_switch_rate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 144
    if-eqz p1, :cond_17

    .line 146
    :try_start_8
    iget-object v1, p0, Lcom/efs/sdk/pa/config/ConfigManager$1;->a:Lcom/efs/sdk/pa/config/ConfigManager;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    # invokes: Lcom/efs/sdk/pa/config/ConfigManager;->putIntValue(Ljava/lang/String;I)V
    invoke-static {v1, v0, p1}, Lcom/efs/sdk/pa/config/ConfigManager;->access$000(Lcom/efs/sdk/pa/config/ConfigManager;Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    .line 148
    return-void

    .line 147
    :catchall_16
    move-exception p1

    .line 150
    :cond_17
    return-void
.end method
