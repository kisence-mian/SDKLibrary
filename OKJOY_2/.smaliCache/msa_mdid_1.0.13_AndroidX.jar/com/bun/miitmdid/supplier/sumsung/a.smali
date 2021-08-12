.class public Lcom/bun/miitmdid/supplier/sumsung/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;
.implements Lcom/bun/miitmdid/c/e/a;


# instance fields
.field public a:Lcom/bun/supplier/SupplierListener;

.field private b:Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bun/supplier/SupplierListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bun/miitmdid/supplier/sumsung/a;->a:Lcom/bun/supplier/SupplierListener;

    new-instance p2, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;

    invoke-direct {p2, p1, p0}, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V

    iput-object p2, p0, Lcom/bun/miitmdid/supplier/sumsung/a;->b:Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;

    return-void
.end method


# virtual methods
.method public native a(Lcom/bun/supplier/SupplierListener;)V
.end method

.method public native a(Z)V
.end method

.method public native a()Z
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
