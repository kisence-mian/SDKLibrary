.class Lcom/bytedance/a/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/a/i;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/a/i;


# direct methods
.method constructor <init>(Lcom/bytedance/a/i;Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bytedance/a/i$1;->c:Lcom/bytedance/a/i;

    iput-object p2, p0, Lcom/bytedance/a/i$1;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/bytedance/a/i$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/a/i$b;)V
    .registers 3

    .prologue
    .line 87
    if-eqz p1, :cond_a

    .line 88
    new-instance v0, Lcom/bytedance/a/i$1$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/a/i$1$1;-><init>(Lcom/bytedance/a/i$1;Lcom/bytedance/a/i$b;)V

    invoke-static {v0}, Lcom/bytedance/a/e;->a(Ljava/lang/Runnable;)V

    .line 98
    :cond_a
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bytedance/a/i$1;->a:Landroid/content/SharedPreferences;

    const-string v1, "oaid_xiaomi_reqId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    iget-object v0, p0, Lcom/bytedance/a/i$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oaid_xiaomi_reqId"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    :cond_27
    iget-object v0, p0, Lcom/bytedance/a/i$1;->a:Landroid/content/SharedPreferences;

    const-string v1, "oaid_xiaomi_queryXiaomiTimes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 64
    iget-object v0, p0, Lcom/bytedance/a/i$1;->a:Landroid/content/SharedPreferences;

    const-string v2, "oaid_xiaomi_lastSuccessQueryOaid"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/bytedance/a/i$b;->a(Ljava/lang/String;)Lcom/bytedance/a/i$b;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/bytedance/a/i$b;->c()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 67
    const-string v2, "TrackerDr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/a/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fromJson.isOaidValid()=true, oaid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/a/i$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/bytedance/a/i$1;->a(Lcom/bytedance/a/i$b;)V

    .line 72
    :cond_6d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 73
    new-instance v4, Lcom/bytedance/a/i$a;

    iget-object v6, p0, Lcom/bytedance/a/i$1;->b:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/bytedance/a/i$a;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v2

    .line 75
    iget-object v2, p0, Lcom/bytedance/a/i$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "oaid_xiaomi_queryXiaomiTimes"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    iget-object v1, v4, Lcom/bytedance/a/i$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 78
    new-instance v0, Lcom/bytedance/a/i$b;

    iget-object v1, v4, Lcom/bytedance/a/i$a;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/bytedance/a/i$a;->b:Ljava/lang/String;

    iget-object v3, v4, Lcom/bytedance/a/i$a;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/bytedance/a/i$a;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/a/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 80
    iget-object v1, p0, Lcom/bytedance/a/i$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "oaid_xiaomi_lastSuccessQueryOaid"

    invoke-virtual {v0}, Lcom/bytedance/a/i$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    const-string v1, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/a/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "saveOaid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/a/i$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_df
    invoke-direct {p0, v0}, Lcom/bytedance/a/i$1;->a(Lcom/bytedance/a/i$b;)V

    .line 84
    return-void
.end method
