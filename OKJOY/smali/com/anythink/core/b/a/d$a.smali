.class public final Lcom/anythink/core/b/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/b/a/d;
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

.field public static final e:Ljava/lang/String; = "https://aa.toponad.com/v1/open/app"

.field public static final f:Ljava/lang/String; = "https://aa.toponad.com/v1/open/placement"

.field public static final g:Ljava/lang/String; = "https://dd.toponad.com/v1/open/da"

.field public static final h:Ljava/lang/String; = "https://tt.toponad.com/v1/open/tk"

.field public static final i:Ljava/lang/String; = "https://aa.toponad.com/v1/open/eu"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const-string v0, "data"

    sput-object v0, Lcom/anythink/core/b/a/d$a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
