.class public interface abstract Lcom/ss/android/socialbase/appdownloader/e/a/g;
.super Ljava/lang/Object;
.source "XmlPullParser.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "START_DOCUMENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "END_DOCUMENT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "START_TAG"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "END_TAG"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDSECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ENTITY_REF"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IGNORABLE_WHITESPACE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PROCESSING_INSTRUCTION"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DOCDECL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/e/a/g;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract f()I
.end method
