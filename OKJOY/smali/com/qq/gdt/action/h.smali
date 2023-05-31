.class public Lcom/qq/gdt/action/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:I

.field private b:I

.field private final c:Lcom/qq/gdt/action/f;

.field private d:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/qq/gdt/action/f;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/qq/gdt/action/h;->a:I

    iput v0, p0, Lcom/qq/gdt/action/h;->b:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/h;->d:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/qq/gdt/action/h;->c:Lcom/qq/gdt/action/f;

    return-void
.end method

.method private a()V
    .registers 3

    const-string v0, "App Enter Foreground"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/h;->c:Lcom/qq/gdt/action/f;

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->g()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    if-nez p1, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acitivity == null, can\'t log "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/qq/gdt/action/h;->d:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_2f
    const-string v0, "page_name"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3c} :catch_6b

    :goto_3c
    const-string v0, "PAUSE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/qq/gdt/action/h;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_7d

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_7d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    :goto_5e
    :try_start_5e
    const-string v2, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_67} :catch_74

    :cond_67
    :goto_67
    invoke-static {p2, v4}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_18

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_3c

    :catch_74
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_67

    :cond_7d
    move-wide v0, v2

    goto :goto_5e
.end method

.method private b()V
    .registers 3

    const-string v0, "App Enter Background"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/h;->c:Lcom/qq/gdt/action/f;

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->h()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-string v0, "PAUSE"

    invoke-direct {p0, p1, v0}, Lcom/qq/gdt/action/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-string v0, "RESUME"

    invoke-direct {p0, p1, v0}, Lcom/qq/gdt/action/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    iget v0, p0, Lcom/qq/gdt/action/h;->a:I

    if-gtz v0, :cond_7

    invoke-direct {p0}, Lcom/qq/gdt/action/h;->a()V

    :cond_7
    iget v0, p0, Lcom/qq/gdt/action/h;->b:I

    if-gez v0, :cond_12

    iget v0, p0, Lcom/qq/gdt/action/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qq/gdt/action/h;->b:I

    :goto_11
    return-void

    :cond_12
    iget v0, p0, Lcom/qq/gdt/action/h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qq/gdt/action/h;->a:I

    goto :goto_11
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/qq/gdt/action/h;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qq/gdt/action/h;->b:I

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/qq/gdt/action/h;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qq/gdt/action/h;->a:I

    iget v0, p0, Lcom/qq/gdt/action/h;->a:I

    if-gtz v0, :cond_c

    invoke-direct {p0}, Lcom/qq/gdt/action/h;->b()V

    goto :goto_c
.end method
