.class public Lcom/bun/miitmdid/c/k/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static a:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private static b:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private static e:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    sget-object v0, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/c/k/a;->a:Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_53

    :goto_10
    :try_start_10
    sget-object v0, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    const-string v1, "getOAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/c/k/a;->c:Ljava/lang/reflect/Method;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_5c

    :cond_26
    :goto_26
    :try_start_26
    sget-object v0, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    const-string v1, "getVAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/c/k/a;->d:Ljava/lang/reflect/Method;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3c} :catch_65

    :cond_3c
    :goto_3c
    :try_start_3c
    sget-object v0, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    if-eqz v0, :cond_52

    sget-object v0, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    const-string v1, "getAAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/c/k/a;->e:Ljava/lang/reflect/Method;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_52} :catch_6e

    :cond_52
    :goto_52
    return-void

    :catch_53
    move-exception v0

    const-string v1, "IdentifierManager"

    const-string v2, "reflect exception!"

    invoke-static {v1, v2, v0}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_5c
    move-exception v0

    const-string v1, "IdentifierManager"

    const-string v2, "reflect exception!"

    invoke-static {v1, v2, v0}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    :catch_65
    move-exception v0

    const-string v1, "IdentifierManager"

    const-string v2, "reflect exception!"

    invoke-static {v1, v2, v0}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    :catch_6e
    move-exception v0

    const-string v1, "IdentifierManager"

    const-string v2, "reflect exception!"

    invoke-static {v1, v2, v0}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_52
.end method

.method public static native a(Landroid/content/Context;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private static native a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native b(Landroid/content/Context;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native c(Landroid/content/Context;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
