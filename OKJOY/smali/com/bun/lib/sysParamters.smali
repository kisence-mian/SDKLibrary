.class public Lcom/bun/lib/sysParamters;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static volatile d:Lcom/bun/lib/sysParamters;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private sdk_version:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private sdk_vname:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "10012"

    iput-object v0, p0, Lcom/bun/lib/sysParamters;->sdk_version:Ljava/lang/String;

    const-string v0, "1.0.12"

    iput-object v0, p0, Lcom/bun/lib/sysParamters;->sdk_vname:Ljava/lang/String;

    return-void
.end method

.method private static native a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native a(Landroid/content/Context;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native e()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native f()Lcom/bun/lib/sysParamters;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native g()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private static native h()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native a()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native b()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native c()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native d()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
