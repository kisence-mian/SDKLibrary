.class Lcom/tds/common/net/TDSNetInterceptor$Holder;
.super Ljava/lang/Object;
.source "TDSNetInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TDSNetInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tds/common/net/TDSNetInterceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/tds/common/net/TDSNetInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tds/common/net/TDSNetInterceptor;-><init>(Lcom/tds/common/net/TDSNetInterceptor$1;)V

    sput-object v0, Lcom/tds/common/net/TDSNetInterceptor$Holder;->INSTANCE:Lcom/tds/common/net/TDSNetInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tds/common/net/TDSNetInterceptor;
    .registers 1

    .line 14
    sget-object v0, Lcom/tds/common/net/TDSNetInterceptor$Holder;->INSTANCE:Lcom/tds/common/net/TDSNetInterceptor;

    return-object v0
.end method
