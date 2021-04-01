.class Lcom/bytedance/embed_device_register/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embed_device_register/e;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/bytedance/embed_device_register/h;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/bytedance/embed_device_register/e;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/e;Landroid/content/SharedPreferences;Lcom/bytedance/embed_device_register/h;Landroid/content/Context;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 65
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$1;->e:Lcom/bytedance/embed_device_register/e;

    iput-object p2, p0, Lcom/bytedance/embed_device_register/e$1;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/bytedance/embed_device_register/e$1;->b:Lcom/bytedance/embed_device_register/h;

    iput-object p4, p0, Lcom/bytedance/embed_device_register/e$1;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/bytedance/embed_device_register/e$1;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/embed_device_register/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embed_device_register/h",
            "<",
            "Lcom/bytedance/embed_device_register/e$a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p1, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_e

    .line 103
    const-string v0, "TrackerDr-update"

    new-instance v1, Lcom/bytedance/embed_device_register/e$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/embed_device_register/e$1$1;-><init>(Lcom/bytedance/embed_device_register/e$1;Lcom/bytedance/embed_device_register/h;)V

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 113
    :cond_e
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1;->a:Landroid/content/SharedPreferences;

    const-string v1, "oaid_req_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "oaid_req_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    :cond_27
    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$1;->a:Landroid/content/SharedPreferences;

    const-string v2, "oaid_query_hms_times"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$1;->a:Landroid/content/SharedPreferences;

    const-string v3, "oaid_last_success_query_oaid"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/bytedance/embed_device_register/e$a$a;->a(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/e$a$a;->b()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 81
    const-string v3, "TrackerDr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fromJson.isOaidValid()=true, oaid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/e$a$a;->a()Lcom/bytedance/embed_device_register/e$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/embed_device_register/e$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/bytedance/embed_device_register/e$1;->b:Lcom/bytedance/embed_device_register/h;

    iput-object v2, v3, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$1;->b:Lcom/bytedance/embed_device_register/h;

    invoke-direct {p0, v2}, Lcom/bytedance/embed_device_register/e$1;->a(Lcom/bytedance/embed_device_register/h;)V

    .line 87
    :cond_75
    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$1;->e:Lcom/bytedance/embed_device_register/e;

    iget-object v3, p0, Lcom/bytedance/embed_device_register/e$1;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/e;Landroid/content/Context;)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v0}, Lcom/bytedance/embed_device_register/e$a$a;->c(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/embed_device_register/e$a$a;->a(I)Lcom/bytedance/embed_device_register/e$a$a;

    .line 89
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "oaid_query_hms_times"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    invoke-static {v2}, Lcom/bytedance/embed_device_register/e$a$a;->a(Lcom/bytedance/embed_device_register/e$a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f4

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/embed_device_register/e$a$a;->b(J)Lcom/bytedance/embed_device_register/e$a$a;

    .line 93
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1;->e:Lcom/bytedance/embed_device_register/e;

    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$1;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/e;->b(Lcom/bytedance/embed_device_register/e;Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/embed_device_register/e$a$a;->c(J)Lcom/bytedance/embed_device_register/e$a$a;

    .line 94
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oaid_last_success_query_oaid"

    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/e$a$a;->a()Lcom/bytedance/embed_device_register/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/embed_device_register/e$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "saveOaid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/e$a$a;->a()Lcom/bytedance/embed_device_register/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/embed_device_register/e$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1;->b:Lcom/bytedance/embed_device_register/h;

    iput-object v2, v0, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    .line 98
    :cond_f4
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1;->b:Lcom/bytedance/embed_device_register/h;

    invoke-direct {p0, v0}, Lcom/bytedance/embed_device_register/e$1;->a(Lcom/bytedance/embed_device_register/h;)V

    .line 99
    return-void
.end method
