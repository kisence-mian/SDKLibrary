.class public Lmobi/oneway/export/h/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/oneway/export/h/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "OnewaySdk"

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lmobi/oneway/export/h/l;->b:Z

    sput-boolean v0, Lmobi/oneway/export/h/l;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Lmobi/oneway/export/h/l;->c:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "OnewaySdk-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lmobi/oneway/export/h/l;->b:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "OnewaySdk"

    new-instance v1, Lmobi/oneway/export/h/l$a;

    invoke-direct {v1, p0}, Lmobi/oneway/export/h/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmobi/oneway/export/h/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "OnewaySdk"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lmobi/oneway/export/h/l;->b:Z

    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Lmobi/oneway/export/h/l;->b:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "OnewaySdk"

    new-instance v1, Lmobi/oneway/export/h/l$a;

    invoke-static {p0}, Lmobi/oneway/export/h/p;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmobi/oneway/export/h/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmobi/oneway/export/h/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lmobi/oneway/export/h/l;->b:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lmobi/oneway/export/h/l;->b:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "OnewaySdk"

    new-instance v1, Lmobi/oneway/export/h/l$a;

    invoke-direct {v1, p0}, Lmobi/oneway/export/h/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmobi/oneway/export/h/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static b(Z)V
    .registers 1

    sput-boolean p0, Lmobi/oneway/export/h/l;->c:Z

    return-void
.end method

.method public static b()Z
    .registers 1

    sget-boolean v0, Lmobi/oneway/export/h/l;->c:Z

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lmobi/oneway/export/h/l;->b:Z

    if-nez v0, :cond_a

    const-string v0, "OnewaySdk"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :cond_a
    const-string v0, "OnewaySdk"

    new-instance v1, Lmobi/oneway/export/h/l$a;

    invoke-direct {v1, p0}, Lmobi/oneway/export/h/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmobi/oneway/export/h/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    const-string v0, "OnewaySdk"

    new-instance v1, Lmobi/oneway/export/h/l$a;

    invoke-direct {v1, p0}, Lmobi/oneway/export/h/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmobi/oneway/export/h/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
