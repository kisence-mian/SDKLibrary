.class public Lcom/bun/miitmdid/c/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/bun/supplier/SupplierListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bun/miitmdid/c/d/a;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/d/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/c/d/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/c/d/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/bun/miitmdid/c/d/a;->a:Landroid/content/Context;

    return-void
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/d/a;)Landroid/content/Context;
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/d/a;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native b()V
.end method

.method static native synthetic b(Lcom/bun/miitmdid/c/d/a;)V
.end method


# virtual methods
.method public native a(Lcom/bun/supplier/SupplierListener;)V
.end method

.method public native a()Z
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
