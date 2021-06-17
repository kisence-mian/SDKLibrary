.class public Lorg/repackage/com/vivo/identifier/IdentifierManager;
.super Ljava/lang/Object;
.source "IdentifierManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    invoke-static {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    .line 15
    invoke-static {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    move-result-object p0

    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 25
    invoke-static {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    move-result-object p0

    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 45
    invoke-static {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 55
    invoke-static {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    move-result-object p0

    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
