.class public Lcom/bun/miitmdid/supplier/msa/MsaClient;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MSA Client library"
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private static TARGET_PACKAGE:Ljava/lang/String; = "com.mdid.msa"
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private _BindService:Lcom/bun/miitmdid/c/e/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private mDeviceidInterface:Lcom/bun/lib/c;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/msa/MsaClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/bun/miitmdid/supplier/msa/MsaClient;->_BindService:Lcom/bun/miitmdid/c/e/a;

    new-instance v0, Lcom/bun/miitmdid/supplier/msa/MsaClient$a;

    invoke-direct {v0, p0, p2}, Lcom/bun/miitmdid/supplier/msa/MsaClient$a;-><init>(Lcom/bun/miitmdid/supplier/msa/MsaClient;Lcom/bun/miitmdid/c/e/a;)V

    iput-object v0, p0, Lcom/bun/miitmdid/supplier/msa/MsaClient;->mConnection:Landroid/content/ServiceConnection;

    return-void

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native CheckService(Landroid/content/Context;)Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native StartMsaKlService(Landroid/content/Context;Ljava/lang/String;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic access$000(Lcom/bun/miitmdid/supplier/msa/MsaClient;)Lcom/bun/lib/c;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic access$002(Lcom/bun/miitmdid/supplier/msa/MsaClient;Lcom/bun/lib/c;)Lcom/bun/lib/c;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic access$100()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native BindService(Ljava/lang/String;)V
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

.method public native shutdown()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
