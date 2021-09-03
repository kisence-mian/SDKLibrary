.class Lcom/tds/tapdb/sdk/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/lang/String; = "app_start_time"

.field private static final c:Ljava/lang/String; = "app_end_time"

.field private static final d:Ljava/lang/String; = "app_user_id"

.field private static e:Lcom/tds/tapdb/sdk/a;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_app_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tds/tapdb/sdk/a;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tds/tapdb/sdk/a;
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/a;->e:Lcom/tds/tapdb/sdk/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/tds/tapdb/sdk/a;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tds/tapdb/sdk/a;->e:Lcom/tds/tapdb/sdk/a;

    :cond_b
    sget-object p0, Lcom/tds/tapdb/sdk/a;->e:Lcom/tds/tapdb/sdk/a;

    return-object p0
.end method

.method public static d()Lcom/tds/tapdb/sdk/a;
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/a;->e:Lcom/tds/tapdb/sdk/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The static method getInstance(Context context) should be called before calling getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()J
    .registers 5

    iget-object v0, p0, Lcom/tds/tapdb/sdk/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "app_end_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)Z
    .registers 5

    iget-object v0, p0, Lcom/tds/tapdb/sdk/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_end_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/tds/tapdb/sdk/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public b()J
    .registers 5

    iget-object v0, p0, Lcom/tds/tapdb/sdk/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "app_start_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)Z
    .registers 5

    iget-object v0, p0, Lcom/tds/tapdb/sdk/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_start_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/tds/tapdb/sdk/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "app_user_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/tds/tapdb/sdk/a;->a(J)Z

    return-void
.end method

.method public f()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/tds/tapdb/sdk/a;->b(J)Z

    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/sdk/a;->a(Ljava/lang/String;)Z

    return-void
.end method
