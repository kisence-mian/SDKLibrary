.class public final Lcom/kwad/sdk/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:Ljava/lang/Boolean;

.field public static final c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/b;->a:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/b;->b:Ljava/lang/Boolean;

    sput-object v0, Lcom/kwad/sdk/b;->c:Ljava/lang/Boolean;

    return-void
.end method
