

import ChildDomain
import ChildPresentation
import ColorData
import ColorDomain
import CoreGraphics
import NeedleFoundation
import StringData
import StringDomain
import UIKit

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class ChildUseCaseProtocol34ccedb770ddf6798abdProvider: ChildUseCaseProtocol {
    var colorRepository: ColorRepository {
        return rootComponent.colorRepository
    }
    var stringRepository: StringRepository {
        return rootComponent.stringRepository
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->ChildComponent
private func factory74365fb2d650f4e17577b3a8f24c1d289f2c0f2e(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChildUseCaseProtocol34ccedb770ddf6798abdProvider(rootComponent: parent1(component) as! RootComponent)
}

#else
extension RootComponent: NeedleFoundation.Registration {
    public func registerItems() {

        localTable["colorRepository-ColorRepository"] = { [unowned self] in self.colorRepository as Any }
        localTable["stringRepository-StringRepository"] = { [unowned self] in self.stringRepository as Any }
    }
}
extension ChildComponent: NeedleFoundation.Registration {
    public func registerItems() {
        keyPathToName[\ChildUseCaseProtocol.colorRepository] = "colorRepository-ColorRepository"
        keyPathToName[\ChildUseCaseProtocol.stringRepository] = "stringRepository-StringRepository"
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->RootComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootComponent->ChildComponent", factory74365fb2d650f4e17577b3a8f24c1d289f2c0f2e)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
