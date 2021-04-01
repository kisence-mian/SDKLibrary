.class public Lcom/qq/gdt/action/h/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .registers 2

    const-string v0, "gdt_action"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    if-nez p1, :cond_6

    invoke-static {p0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_6
    const-string v0, "gdt_action"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    const-string v0, "gdt_action"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    if-nez p1, :cond_6

    invoke-static {p0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_6
    const-string v0, "gdt_action"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    const-string v0, "gdt_action"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
