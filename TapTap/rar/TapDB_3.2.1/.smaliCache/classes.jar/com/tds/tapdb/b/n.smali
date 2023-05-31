.class public final Lcom/tds/tapdb/b/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z = true

.field private static final b:Ljava/lang/String; = "TapDB"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .registers 2

    sget-boolean v0, Lcom/tds/tapdb/b/n;->a:Z

    if-eqz v0, :cond_a

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;Z)V

    :cond_a
    return-void
.end method

.method public static a(Ljava/lang/Exception;Z)V
    .registers 3

    sget-boolean v0, Lcom/tds/tapdb/b/n;->a:Z

    if-eqz v0, :cond_13

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_10

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->c(Ljava/lang/String;)V

    goto :goto_13

    :cond_10
    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/tds/tapdb/b/n;->a:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug ----- message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TapDB"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    sget-boolean v0, Lcom/tds/tapdb/b/n;->a:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/tds/tapdb/b/n;->a:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/tds/tapdb/b/n;->a:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error ----- message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TapDB"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/tds/tapdb/b/n;->a:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warning ----- message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TapDB"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method
