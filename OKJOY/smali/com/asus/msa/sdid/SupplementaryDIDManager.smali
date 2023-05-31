.class public Lcom/asus/msa/sdid/SupplementaryDIDManager;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static DEBUG:Z = false
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SupplementaryDIDManager"
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field public isBinded:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public mDidService:Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public mListener:Lcom/asus/msa/sdid/IDIDBinderStatusListener;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public mServiceConnection:Landroid/content/ServiceConnection;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->isBinded:Z

    new-instance v0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;

    invoke-direct {v0, p0}, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;-><init>(Lcom/asus/msa/sdid/SupplementaryDIDManager;)V

    iput-object v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static native synthetic access$000()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native synthetic access$102(Lcom/asus/msa/sdid/SupplementaryDIDManager;Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static native synthetic access$200(Lcom/asus/msa/sdid/SupplementaryDIDManager;Z)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private native notifyAllListeners(Z)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native deInit()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native init(Lcom/asus/msa/sdid/IDIDBinderStatusListener;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native showLog(Z)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
