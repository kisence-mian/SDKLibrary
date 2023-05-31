.class public final Lcom/bytedance/tea/crash/f/c;
.super Ljava/lang/Object;
.source "ScheduleTaskManager.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/tea/crash/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 10

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/f/c;->a:Ljava/util/List;

    .line 23
    iget-object v6, p0, Lcom/bytedance/tea/crash/f/c;->a:Ljava/util/List;

    new-instance v0, Lcom/bytedance/tea/crash/f/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3a98

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/tea/crash/f/b;-><init>(Landroid/os/Handler;JJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public static a(Landroid/os/Handler;Landroid/content/Context;)Lcom/bytedance/tea/crash/f/c;
    .registers 3

    .prologue
    .line 27
    new-instance v0, Lcom/bytedance/tea/crash/f/c;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/tea/crash/f/c;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ScheduleTaskManager] execute, task size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/f/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/tea/crash/f/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/f/a;

    .line 37
    :try_start_2e
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/f/a;->a()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_22

    .line 38
    :catch_32
    move-exception v0

    goto :goto_22

    .line 41
    :cond_34
    return-void
.end method
