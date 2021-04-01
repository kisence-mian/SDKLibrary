.class public Lmobi/oneway/export/d/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lmobi/oneway/export/d/b;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lmobi/oneway/export/d/b;->a:Landroid/content/Context;

    if-nez v0, :cond_9

    const-string v0, "OnewaySdk.init method must invoke first and paramter context must not be null"

    invoke-static {v0}, Lmobi/oneway/export/h/l;->d(Ljava/lang/String;)V

    :cond_9
    sget-object v0, Lmobi/oneway/export/d/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lmobi/oneway/export/d/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmobi/oneway/export/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lmobi/oneway/export/d/b;->c:Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmobi/oneway/export/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmobi/oneway/export/d/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmobi/oneway/export/d/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static c()Z
    .registers 1

    sget-boolean v0, Lmobi/oneway/export/d/b;->c:Z

    return v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmobi/oneway/export/d/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmobi/oneway/export/d/b;->e:Ljava/lang/String;

    return-object v0
.end method
