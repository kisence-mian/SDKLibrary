.class public final Lcom/middleware/security/sig1core/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/middleware/security/sig1core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final app_name:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    sget v0, Lcom/kwad/sdk/R$string;->app_name:I

    sput v0, Lcom/middleware/security/sig1core/R$string;->app_name:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
