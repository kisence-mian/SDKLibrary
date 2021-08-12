.class public final Lcom/anythink/core/common/b/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "1.0"

.field public static final b:Ljava/lang/String; = "code"

.field public static final c:I = 0x0

.field public static d:Ljava/lang/String; = null

.field public static final e:Ljava/lang/String; = "https://api.anythinktech.com/v1/open/app"

.field public static final f:Ljava/lang/String; = "https://api.anythinktech.com/v1/open/placement"

.field public static final g:Ljava/lang/String; = "https://da.anythinktech.com/v1/open/da"

.field public static final h:Ljava/lang/String; = "https://tk.anythinktech.com/v1/open/tk"

.field public static final i:Ljava/lang/String; = "https://api.anythinktech.com/v1/open/eu"

.field public static final j:Ljava/lang/String; = "https://adx.anythinktech.com/bid"

.field public static final k:Ljava/lang/String; = "https://adx.anythinktech.com/request"

.field public static final l:Ljava/lang/String; = "https://adxtk.anythinktech.com/v1"

.field public static final m:Ljava/lang/String; = "https://adx.anythinktech.com/openapi/req"

.field public static final n:Ljava/lang/String; = "https://bidding.anythinktech.com"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 137
    const-string v0, "data"

    sput-object v0, Lcom/anythink/core/common/b/e$a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
