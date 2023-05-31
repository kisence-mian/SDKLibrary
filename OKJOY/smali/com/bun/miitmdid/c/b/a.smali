.class public Lcom/bun/miitmdid/c/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;
.implements Lcom/asus/msa/sdid/IDIDBinderStatusListener;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private a:Lcom/bun/supplier/SupplierListener;
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

.field private e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private f:Lcom/asus/msa/sdid/SupplementaryDIDManager;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private g:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private h:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bun/supplier/SupplierListener;)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/b/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/b/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/b/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/b/a;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bun/miitmdid/c/b/a;->g:Z

    iput-boolean v1, p0, Lcom/bun/miitmdid/c/b/a;->h:Z

    iput-object p2, p0, Lcom/bun/miitmdid/c/b/a;->a:Lcom/bun/supplier/SupplierListener;

    new-instance v0, Lcom/asus/msa/sdid/SupplementaryDIDManager;

    invoke-direct {v0, p1}, Lcom/asus/msa/sdid/SupplementaryDIDManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bun/miitmdid/c/b/a;->f:Lcom/asus/msa/sdid/SupplementaryDIDManager;

    return-void
.end method


# virtual methods
.method public native a(Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a(Lcom/bun/supplier/SupplierListener;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native asBinder()Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native b()V
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
