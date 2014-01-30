part of compdb.components.pager;

@NgComponent(
    selector: "compdb-pager",
    templateUrl: "/packages/compdb/components/pager/pager.html",
    cssUrl: "/packages/compdb/components/pager/pager.css",
    publishAs: "m")
class CompdbPager implements NgAttachAware {
  @NgTwoWay("paginator")
  Paginator paginator;

  final Scope scope;

  final html.Element element;

  final List<int> pageSizes = const [10, 20, 50, 100];

  CompdbPager(this.scope, this.element);

  attach() {
    /* If 'All' size is selected, we should update pageSize if itemsTotal changes */
    scope.$watch(() => paginator.itemsTotal, () {
      html.OptionElement allOption = element.shadowRoot.querySelector("option:last-child");
      if (allOption != null && allOption.selected) {
        paginator.pageSize = paginator.itemsTotal;
      }
    });
  }
}
