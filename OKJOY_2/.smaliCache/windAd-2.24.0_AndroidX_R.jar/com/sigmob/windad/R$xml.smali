.class public Lcom/sigmob/windad/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xml"
.end annotation


# static fields
.field public static network_security_config:I

.field public static sigmob_provider_paths:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const v0, 0x7f180001

    sput v0, Lcom/sigmob/windad/R$xml;->network_security_config:I

    .line 23
    const v0, 0x7f180002

    sput v0, Lcom/sigmob/windad/R$xml;->sigmob_provider_paths:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
