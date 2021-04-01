.class public Lcom/bun/miitmdid/c/h/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static a:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "content://cn.nubia.identity/identity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/c/h/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public static native a(Landroid/content/Context;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native b(Landroid/content/Context;)Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
