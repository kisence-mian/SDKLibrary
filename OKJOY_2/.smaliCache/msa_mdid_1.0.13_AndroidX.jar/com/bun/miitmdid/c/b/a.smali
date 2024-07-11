.class public Lcom/bun/miitmdid/c/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;
.implements Lcom/asus/msa/sdid/IDIDBinderStatusListener;


# instance fields
.field private a:Lcom/bun/supplier/SupplierListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/asus/msa/sdid/SupplementaryDIDManager;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bun/supplier/SupplierListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/b/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/c/b/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/c/b/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/c/b/a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bun/miitmdid/c/b/a;->g:Z

    iput-boolean v0, p0, Lcom/bun/miitmdid/c/b/a;->h:Z

    iput-object p2, p0, Lcom/bun/miitmdid/c/b/a;->a:Lcom/bun/supplier/SupplierListener;

    new-instance p2, Lcom/asus/msa/sdid/SupplementaryDIDManager;

    invoke-direct {p2, p1}, Lcom/asus/msa/sdid/SupplementaryDIDManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bun/miitmdid/c/b/a;->f:Lcom/asus/msa/sdid/SupplementaryDIDManager;

    return-void
.end method


# virtual methods
.method public native a(Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)V
.end method

.method public native a(Lcom/bun/supplier/SupplierListener;)V
.end method

.method public native a()Z
.end method

.method public native asBinder()Landroid/os/IBinder;
.end method

.method public native b()V
.end method

.method public native getAAID()Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getUDID()Ljava/lang/String;
.end method

.method public native getVAID()Ljava/lang/String;
.end method

.method public native isSupported()Z
.end method

.method public native shutDown()V
.end method
