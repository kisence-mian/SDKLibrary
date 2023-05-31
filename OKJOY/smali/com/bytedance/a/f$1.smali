.class Lcom/bytedance/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/a/f;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/bytedance/a/f;


# direct methods
.method constructor <init>(Lcom/bytedance/a/f;Landroid/content/SharedPreferences;Landroid/content/Context;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bytedance/a/f$1;->d:Lcom/bytedance/a/f;

    iput-object p2, p0, Lcom/bytedance/a/f$1;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/bytedance/a/f$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/a/f$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/a/f$a$a;)V
    .registers 4

    .prologue
    .line 98
    if-eqz p1, :cond_c

    .line 99
    const-string v0, "TrackerDr-update"

    new-instance v1, Lcom/bytedance/a/f$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/a/f$1$1;-><init>(Lcom/bytedance/a/f$1;Lcom/bytedance/a/f$a$a;)V

    invoke-static {v0, v1}, Lcom/bytedance/a/e;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 109
    :cond_c
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/a/f$1;->a:Landroid/content/SharedPreferences;

    const-string v1, "oaid_req_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/bytedance/a/f$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "oaid_req_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    :cond_27
    iget-object v1, p0, Lcom/bytedance/a/f$1;->a:Landroid/content/SharedPreferences;

    const-string v2, "oaid_query_hms_times"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 76
    iget-object v2, p0, Lcom/bytedance/a/f$1;->a:Landroid/content/SharedPreferences;

    const-string v3, "oaid_last_success_query_oaid"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/bytedance/a/f$a$a;->a(Ljava/lang/String;)Lcom/bytedance/a/f$a$a;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/bytedance/a/f$a$a;->b()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 79
    const-string v3, "TrackerDr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/a/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fromJson.isOaidValid()=true, oaid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/a/f$a$a;->a()Lcom/bytedance/a/f$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/a/f$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, v2}, Lcom/bytedance/a/f$1;->a(Lcom/bytedance/a/f$a$a;)V

    .line 84
    :cond_6f
    iget-object v2, p0, Lcom/bytedance/a/f$1;->d:Lcom/bytedance/a/f;

    iget-object v3, p0, Lcom/bytedance/a/f$1;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/bytedance/a/f;->a(Lcom/bytedance/a/f;Landroid/content/Context;)Lcom/bytedance/a/f$a$a;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v0}, Lcom/bytedance/a/f$a$a;->c(Ljava/lang/String;)Lcom/bytedance/a/f$a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/a/f$a$a;->a(I)Lcom/bytedance/a/f$a$a;

    .line 86
    iget-object v0, p0, Lcom/bytedance/a/f$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "oaid_query_hms_times"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    invoke-static {v2}, Lcom/bytedance/a/f$a$a;->a(Lcom/bytedance/a/f$a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/a/f$a$a;->b(J)Lcom/bytedance/a/f$a$a;

    .line 90
    iget-object v0, p0, Lcom/bytedance/a/f$1;->d:Lcom/bytedance/a/f;

    iget-object v1, p0, Lcom/bytedance/a/f$1;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/a/f;->b(Lcom/bytedance/a/f;Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/a/f$a$a;->c(J)Lcom/bytedance/a/f$a$a;

    .line 91
    iget-object v0, p0, Lcom/bytedance/a/f$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oaid_last_success_query_oaid"

    invoke-virtual {v2}, Lcom/bytedance/a/f$a$a;->a()Lcom/bytedance/a/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/a/f$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/a/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "saveOaid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bytedance/a/f$a$a;->a()Lcom/bytedance/a/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/a/f$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_ea
    invoke-direct {p0, v2}, Lcom/bytedance/a/f$1;->a(Lcom/bytedance/a/f$a$a;)V

    .line 95
    return-void
.end method
