.class Lcom/bytedance/embed_device_register/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embed_device_register/i;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/bytedance/embed_device_register/h;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/bytedance/embed_device_register/i;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/i;Landroid/content/SharedPreferences;Lcom/bytedance/embed_device_register/h;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bytedance/embed_device_register/i$1;->d:Lcom/bytedance/embed_device_register/i;

    iput-object p2, p0, Lcom/bytedance/embed_device_register/i$1;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/bytedance/embed_device_register/i$1;->b:Lcom/bytedance/embed_device_register/h;

    iput-object p4, p0, Lcom/bytedance/embed_device_register/i$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/embed_device_register/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embed_device_register/h",
            "<",
            "Lcom/bytedance/embed_device_register/i$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p1, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 92
    new-instance v0, Lcom/bytedance/embed_device_register/i$1$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/embed_device_register/i$1$1;-><init>(Lcom/bytedance/embed_device_register/i$1;Lcom/bytedance/embed_device_register/h;)V

    invoke-static {v0}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/Runnable;)V

    .line 102
    :cond_c
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$1;->a:Landroid/content/SharedPreferences;

    const-string v1, "oaid_xiaomi_reqId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oaid_xiaomi_reqId"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    :cond_27
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$1;->a:Landroid/content/SharedPreferences;

    const-string v1, "oaid_xiaomi_queryXiaomiTimes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/bytedance/embed_device_register/i$1;->a:Landroid/content/SharedPreferences;

    const-string v2, "oaid_xiaomi_lastSuccessQueryOaid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/bytedance/embed_device_register/i$b;->a(Ljava/lang/String;)Lcom/bytedance/embed_device_register/i$b;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/i$b;->c()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 69
    const-string v2, "TrackerDr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fromJson.isOaidValid()=true, oaid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/i$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/bytedance/embed_device_register/i$1;->b:Lcom/bytedance/embed_device_register/h;

    iput-object v1, v2, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/bytedance/embed_device_register/i$1;->b:Lcom/bytedance/embed_device_register/h;

    invoke-direct {p0, v1}, Lcom/bytedance/embed_device_register/i$1;->a(Lcom/bytedance/embed_device_register/h;)V

    .line 75
    :cond_73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 76
    new-instance v4, Lcom/bytedance/embed_device_register/i$a;

    iget-object v1, p0, Lcom/bytedance/embed_device_register/i$1;->c:Landroid/content/Context;

    invoke-direct {v4, v1}, Lcom/bytedance/embed_device_register/i$a;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v2

    .line 78
    iget-object v1, p0, Lcom/bytedance/embed_device_register/i$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "oaid_xiaomi_queryXiaomiTimes"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    iget-object v0, v4, Lcom/bytedance/embed_device_register/i$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 81
    new-instance v0, Lcom/bytedance/embed_device_register/i$b;

    iget-object v1, v4, Lcom/bytedance/embed_device_register/i$a;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/bytedance/embed_device_register/i$a;->b:Ljava/lang/String;

    iget-object v3, v4, Lcom/bytedance/embed_device_register/i$a;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/bytedance/embed_device_register/i$a;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/embed_device_register/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 83
    iget-object v1, p0, Lcom/bytedance/embed_device_register/i$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "oaid_xiaomi_lastSuccessQueryOaid"

    invoke-virtual {v0}, Lcom/bytedance/embed_device_register/i$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    const-string v1, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "saveOaid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/embed_device_register/i$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/bytedance/embed_device_register/i$1;->b:Lcom/bytedance/embed_device_register/h;

    iput-object v0, v1, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    .line 87
    :cond_e9
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$1;->b:Lcom/bytedance/embed_device_register/h;

    invoke-direct {p0, v0}, Lcom/bytedance/embed_device_register/i$1;->a(Lcom/bytedance/embed_device_register/h;)V

    .line 88
    return-void
.end method
