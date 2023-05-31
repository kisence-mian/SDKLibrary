.class public final Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message",
        "<",
        "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;",
        "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LEADING_COMMENTS:Ljava/lang/String; = ""

.field public static final DEFAULT_TRAILING_COMMENTS:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final leading_comments:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final leading_detached_comments:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final path:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        label = .enum Lcom/sigmob/wire/WireField$Label;->PACKED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final span:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        label = .enum Lcom/sigmob/wire/WireField$Label;->PACKED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final trailing_comments:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$ProtoAdapter_Location;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$ProtoAdapter_Location;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v6, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    const-string v0, "path"

    invoke-static {v0, p1}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->path:Ljava/util/List;

    const-string v0, "span"

    invoke-static {v0, p2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->span:Ljava/util/List;

    iput-object p3, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_comments:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->trailing_comments:Ljava/lang/String;

    const-string v0, "leading_detached_comments"

    invoke-static {v0, p5}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_detached_comments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->path:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->path:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->span:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->span:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_comments:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_comments:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->trailing_comments:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->trailing_comments:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_detached_comments:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_detached_comments:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_4d
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->path:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->span:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_comments:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_comments:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->trailing_comments:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->trailing_comments:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_38
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_detached_comments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_44
    return v0

    :cond_45
    move v0, v1

    goto :goto_2b
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->newBuilder()Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;-><init>()V

    const-string v1, "path"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->path:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->path:Ljava/util/List;

    const-string v1, "span"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->span:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->span:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_comments:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->leading_comments:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->trailing_comments:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->trailing_comments:Ljava/lang/String;

    const-string v1, "leading_detached_comments"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_detached_comments:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->leading_detached_comments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->path:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->path:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->span:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, ", span="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->span:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2b
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_comments:Ljava/lang/String;

    if-eqz v1, :cond_3a

    const-string v1, ", leading_comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_comments:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->trailing_comments:Ljava/lang/String;

    if-eqz v1, :cond_49

    const-string v1, ", trailing_comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->trailing_comments:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_detached_comments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, ", leading_detached_comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->leading_detached_comments:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5c
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Location{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
