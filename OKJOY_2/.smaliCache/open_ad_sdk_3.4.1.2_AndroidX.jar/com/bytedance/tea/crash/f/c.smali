.class public final Lcom/bytedance/tea/crash/f/c;
.super Ljava/lang/Object;
.source "ScheduleTaskManager.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 10

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/bytedance/tea/crash/f/c;->a:Ljava/util/List;

    .line 23
    new-instance v0, Lcom/bytedance/tea/crash/f/b;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3a98

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/tea/crash/f/b;-><init>(Landroid/os/Handler;JJ)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public static a(Landroid/os/Handler;Landroid/content/Context;)Lcom/bytedance/tea/crash/f/c;
    .registers 3

    .line 27
    new-instance v0, Lcom/bytedance/tea/crash/f/c;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/tea/crash/f/c;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

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

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/tea/crash/f/a;

    .line 37
    :try_start_2e
    invoke-virtual {v1}, Lcom/bytedance/tea/crash/f/a;->a()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    .line 39
    goto :goto_33

    .line 38
    :catchall_32
    move-exception v1

    .line 40
    :goto_33
    goto :goto_22

    .line 41
    :cond_34
    return-void
.end method
