.class public final Lcom/yxcorp/kuaishou/addfp/a/b/i/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->a:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "getOAID"

    invoke-static {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    :try_start_a
    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->b:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->a:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2b

    check-cast p0, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->b:Ljava/lang/Class;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->a:Ljava/lang/Object;

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method
