.class public Lcom/bun/miitmdid/supplier/msa/MsaClient;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = "MSA Client library"

.field private static TARGET_PACKAGE:Ljava/lang/String; = "com.mdid.msa"


# instance fields
.field private _BindService:Lcom/bun/miitmdid/c/e/a;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceidInterface:Lcom/bun/lib/c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/msa/MsaClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/bun/miitmdid/supplier/msa/MsaClient;->_BindService:Lcom/bun/miitmdid/c/e/a;

    new-instance p1, Lcom/bun/miitmdid/supplier/msa/MsaClient$a;

    invoke-direct {p1, p0, p2}, Lcom/bun/miitmdid/supplier/msa/MsaClient$a;-><init>(Lcom/bun/miitmdid/supplier/msa/MsaClient;Lcom/bun/miitmdid/c/e/a;)V

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/msa/MsaClient;->mConnection:Landroid/content/ServiceConnection;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static native CheckService(Landroid/content/Context;)Z
.end method

.method public static native StartMsaKlService(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method static native synthetic access$000(Lcom/bun/miitmdid/supplier/msa/MsaClient;)Lcom/bun/lib/c;
.end method

.method static native synthetic access$002(Lcom/bun/miitmdid/supplier/msa/MsaClient;Lcom/bun/lib/c;)Lcom/bun/lib/c;
.end method

.method static native synthetic access$100()Ljava/lang/String;
.end method


# virtual methods
.method public native BindService(Ljava/lang/String;)V
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

.method public native shutdown()V
.end method
