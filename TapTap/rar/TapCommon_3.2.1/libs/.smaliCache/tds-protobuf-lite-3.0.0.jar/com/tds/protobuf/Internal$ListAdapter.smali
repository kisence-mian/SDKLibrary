.class public Lcom/tds/protobuf/Internal$ListAdapter;
.super Ljava/util/AbstractList;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/Internal$ListAdapter$Converter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/tds/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Internal$ListAdapter$Converter<",
            "TF;TT;>;"
        }
    .end annotation
.end field

.field private final fromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/tds/protobuf/Internal$ListAdapter$Converter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TF;>;",
            "Lcom/tds/protobuf/Internal$ListAdapter$Converter<",
            "TF;TT;>;)V"
        }
    .end annotation

    .line 429
    .local p0, "this":Lcom/tds/protobuf/Internal$ListAdapter;, "Lcom/tds/protobuf/Internal$ListAdapter<TF;TT;>;"
    .local p1, "fromList":Ljava/util/List;, "Ljava/util/List<TF;>;"
    .local p2, "converter":Lcom/tds/protobuf/Internal$ListAdapter$Converter;, "Lcom/tds/protobuf/Internal$ListAdapter$Converter<TF;TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/tds/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    .line 431
    iput-object p2, p0, Lcom/tds/protobuf/Internal$ListAdapter;->converter:Lcom/tds/protobuf/Internal$ListAdapter$Converter;

    .line 432
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/tds/protobuf/Internal$ListAdapter;, "Lcom/tds/protobuf/Internal$ListAdapter<TF;TT;>;"
    iget-object v0, p0, Lcom/tds/protobuf/Internal$ListAdapter;->converter:Lcom/tds/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/tds/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 441
    .local p0, "this":Lcom/tds/protobuf/Internal$ListAdapter;, "Lcom/tds/protobuf/Internal$ListAdapter<TF;TT;>;"
    iget-object v0, p0, Lcom/tds/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
