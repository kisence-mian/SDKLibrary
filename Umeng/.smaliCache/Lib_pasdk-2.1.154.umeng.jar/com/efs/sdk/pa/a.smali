.class public final Lcom/efs/sdk/pa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/pa/PAANRListener;


# instance fields
.field private a:Lcom/efs/sdk/pa/PAFactory;

.field private b:Lcom/efs/sdk/pa/PATraceListener;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/pa/PAFactory;)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/efs/sdk/pa/a;->a:Lcom/efs/sdk/pa/PAFactory;

    .line 18
    invoke-virtual {p1}, Lcom/efs/sdk/pa/PAFactory;->getTraceListener()Lcom/efs/sdk/pa/PATraceListener;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/pa/a;->b:Lcom/efs/sdk/pa/PATraceListener;

    .line 19
    invoke-virtual {p1}, Lcom/efs/sdk/pa/PAFactory;->getConfigManager()Lcom/efs/sdk/pa/config/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/efs/sdk/pa/config/ConfigManager;->enableTracer()Z

    move-result p1

    .line 20
    if-eqz p1, :cond_1d

    .line 21
    iget-object v0, p0, Lcom/efs/sdk/pa/a;->a:Lcom/efs/sdk/pa/PAFactory;

    const/4 v1, 0x0

    const-string v2, "patracepv"

    invoke-static {v0, v2, v1}, Lcom/efs/sdk/pa/c;->a(Lcom/efs/sdk/pa/PAFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_1d
    iget-object v0, p0, Lcom/efs/sdk/pa/a;->b:Lcom/efs/sdk/pa/PATraceListener;

    if-eqz v0, :cond_24

    .line 24
    invoke-interface {v0, p1}, Lcom/efs/sdk/pa/PATraceListener;->onCheck(Z)V

    .line 26
    :cond_24
    return-void
.end method


# virtual methods
.method public final anrStack(Ljava/lang/String;)V
    .registers 4

    .line 30
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_18

    .line 31
    iget-object v0, p0, Lcom/efs/sdk/pa/a;->a:Lcom/efs/sdk/pa/PAFactory;

    const-string v1, "patrace"

    invoke-static {v0, v1, p1}, Lcom/efs/sdk/pa/c;->a(Lcom/efs/sdk/pa/PAFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/efs/sdk/pa/a;->b:Lcom/efs/sdk/pa/PATraceListener;

    if-eqz p1, :cond_18

    .line 33
    invoke-interface {p1}, Lcom/efs/sdk/pa/PATraceListener;->onAnrTrace()V

    .line 36
    :cond_18
    return-void
.end method

.method public final unexcept(Ljava/lang/Object;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/efs/sdk/pa/a;->b:Lcom/efs/sdk/pa/PATraceListener;

    if-eqz v0, :cond_7

    .line 41
    invoke-interface {v0, p1}, Lcom/efs/sdk/pa/PATraceListener;->onUnexcept(Ljava/lang/Object;)V

    .line 43
    :cond_7
    return-void
.end method
