.class public Lcom/bun/miitmdid/c/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private a:Landroid/content/Context;
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

.field private d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private e:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private f:Lcom/bun/supplier/SupplierListener;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bun/miitmdid/c/d/a;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/d/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/d/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/d/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/bun/miitmdid/c/d/a;->a:Landroid/content/Context;

    return-void
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/d/a;)Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/d/a;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private native b()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic b(Lcom/bun/miitmdid/c/d/a;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native a(Lcom/bun/supplier/SupplierListener;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getAAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getOAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getUDID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getVAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native isSupported()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native shutDown()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
