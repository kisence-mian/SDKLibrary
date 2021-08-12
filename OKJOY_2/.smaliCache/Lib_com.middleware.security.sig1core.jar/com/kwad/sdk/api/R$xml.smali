.class public final Lcom/kwad/sdk/api/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static final ksad_file_paths:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    sget v0, Lcom/kwad/sdk/R$xml;->ksad_file_paths:I

    sput v0, Lcom/kwad/sdk/api/R$xml;->ksad_file_paths:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
