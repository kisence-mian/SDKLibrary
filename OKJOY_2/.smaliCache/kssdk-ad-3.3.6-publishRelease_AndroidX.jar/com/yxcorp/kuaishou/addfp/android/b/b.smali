.class public final Lcom/yxcorp/kuaishou/addfp/android/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    const-string v0, "1.2.8.14.cf769ba8"

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    :try_start_0
    sget-boolean v0, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const-string v0, "AD_AND"

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    return-void
.end method
